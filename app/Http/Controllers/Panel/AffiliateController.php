<?php

namespace App\Http\Controllers\Panel;

use App\Http\Controllers\Controller;
use App\Models\Accounting;
use App\Models\Affiliate;
use App\Models\AffiliateCode;
use App\Models\Notification;
use App\Models\NotificationStatus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AffiliateController extends Controller
{
    public function compiler()
    {
       $user = auth()->user();

        $notifications = Notification::where(function ($query) use ($user) {
            $query->where('notifications.user_id', $user->id)
                ->where('notifications.type', 'single');
        })->orWhere(function ($query) use ($user) {
            if (!$user->isAdmin()) {
                $query->whereNull('notifications.user_id')
                    ->whereNull('notifications.group_id')
                    ->where('notifications.type', 'all_users');
            }
        });

        $userGroup = $user->userGroup()->first();
        if (!empty($userGroup)) {
            $notifications->orWhere(function ($query) use ($userGroup) {
                $query->where('notifications.group_id', $userGroup->group_id)
                    ->where('notifications.type', 'group');
            });
        }

        $notifications->orWhere(function ($query) use ($user) {
            $query->whereNull('notifications.user_id')
                ->whereNull('notifications.group_id')
                ->where(function ($query) use ($user) {
                    if ($user->isUser()) {
                        $query->where('notifications.type', 'students');
                    } elseif ($user->isTeacher()) {
                        $query->where('notifications.type', 'instructors');
                    } elseif ($user->isOrganization()) {
                        $query->where('notifications.type', 'organizations');
                    }
                });
        });

        $notifications = $notifications->leftJoin('notifications_status','notifications.id','=','notifications_status.notification_id')
            ->selectRaw('notifications.*, count(notifications_status.notification_id) AS `count`')
            ->with(['notificationStatus'])
            ->groupBy('notifications.id')
            ->orderBy('count','asc')
            ->orderBy('notifications.created_at','DESC')
            ->paginate(10);

        $data = [
            'pageTitle' => trans('panel.notifications'),
            'notifications' => $notifications
        ];


        return view(getTemplate() . '.panel.compiler.index', $data);
    }
    
    
      public function index()
    {
       $user = auth()->user();

        $notifications = Notification::where(function ($query) use ($user) {
            $query->where('notifications.user_id', $user->id)
                ->where('notifications.type', 'single');
        })->orWhere(function ($query) use ($user) {
            if (!$user->isAdmin()) {
                $query->whereNull('notifications.user_id')
                    ->whereNull('notifications.group_id')
                    ->where('notifications.type', 'all_users');
            }
        });

        $userGroup = $user->userGroup()->first();
        if (!empty($userGroup)) {
            $notifications->orWhere(function ($query) use ($userGroup) {
                $query->where('notifications.group_id', $userGroup->group_id)
                    ->where('notifications.type', 'group');
            });
        }

        $notifications->orWhere(function ($query) use ($user) {
            $query->whereNull('notifications.user_id')
                ->whereNull('notifications.group_id')
                ->where(function ($query) use ($user) {
                    if ($user->isUser()) {
                        $query->where('notifications.type', 'students');
                    } elseif ($user->isTeacher()) {
                        $query->where('notifications.type', 'instructors');
                    } elseif ($user->isOrganization()) {
                        $query->where('notifications.type', 'organizations');
                    }
                });
        });

        $notifications = $notifications->leftJoin('notifications_status','notifications.id','=','notifications_status.notification_id')
            ->selectRaw('notifications.*, count(notifications_status.notification_id) AS `count`')
            ->with(['notificationStatus'])
            ->groupBy('notifications.id')
            ->orderBy('count','asc')
            ->orderBy('notifications.created_at','DESC')
            ->paginate(10);

        $data = [
            'pageTitle' => trans('panel.notifications'),
            'notifications' => $notifications
        ];


        return view(getTemplate() . '.panel.compiler.index', $data);
    }
    
    public function affiliates()
    {
        $user = auth()->user();

        $affiliateCode = $user->affiliateCode;

        if (empty($affiliateCode)) {
            $affiliateCode = $this->makeUserAffiliateCode($user);
        }

        $referredUsersCount = Affiliate::where('affiliate_user_id', $user->id)->count();

        $registrationBonus = Accounting::where('is_affiliate_amount', true)
            ->where('system', false)
            ->where('user_id', $user->id)
            ->sum('amount');

        $affiliateBonus = Accounting::where('is_affiliate_commission', true)
            ->where('system', false)
            ->where('user_id', $user->id)
            ->sum('amount');

        $affiliates = Affiliate::where('affiliate_user_id', $user->id)
            ->with([
                'referredUser',
            ])
            ->orderBy('created_at', 'desc')
            ->paginate(10);


        $data = [
            'pageTitle' => trans('panel.affiliates_page'),
            'affiliateCode' => $affiliateCode,
            'registrationBonus' => $registrationBonus,
            'affiliateBonus' => $affiliateBonus,
            'referredUsersCount' => $referredUsersCount,
            'affiliates' => $affiliates,
        ];

        return view('web.default.panel.marketing.affiliates', $data);
    }

    private function makeUserAffiliateCode($user)
    {
        $code = mt_rand(100000, 999999);

        $check = AffiliateCode::where('code', $code)->first();

        if (!empty($check)) {
            return $this->makeUserAffiliateCode($user);
        }

        $affiliateCode = AffiliateCode::create([
            'user_id' => $user->id,
            'code' => $code,
            'created_at' => time()
        ]);

        return $affiliateCode;
    }
}
