<?php $__env->startPush('styles_top'); ?>
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/select2/select2.min.css">
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <section>
        <h2 class="section-title"><?php echo e(trans('financial.sales_statistics')); ?></h2>

        <div class="activities-container mt-25 p-20 p-lg-35">
            <div class="row">
                <div class="col-6 col-md-3 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/48.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5 text-dark-blue"><?php echo e($studentCount); ?></strong>
                        <span class="font-16 font-weight-500 text-gray"><?php echo e(trans('quiz.students')); ?></span>
                    </div>
                </div>

                <div class="col-6 col-md-3 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/webinars.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5 text-dark-blue"><?php echo e($webinarCount); ?></strong>
                        <span class="font-16 font-weight-500 text-gray"><?php echo e(trans('panel.content_sales')); ?></span>
                    </div>
                </div>

                <div class="col-6 col-md-3 d-flex align-items-center justify-content-center mt-5 mt-md-0">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/sales.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5 text-dark-blue"><?php echo e($meetingCount); ?></strong>
                        <span class="font-16 font-weight-500 text-gray"><?php echo e(trans('panel.appointment_sales')); ?></span>
                    </div>
                </div>

                <div class="col-6 col-md-3 d-flex align-items-center justify-content-center mt-5 mt-md-0">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/download-sales.svg" width="64" height="64" alt="">
                        <strong class="font-30 font-weight-bold mt-5 text-dark-blue"><?php echo e(addCurrencyToPrice($totalSales)); ?></strong>
                        <span class="font-16 font-weight-500 text-gray"><?php echo e(trans('financial.total_sales')); ?></span>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="mt-25">
        <h2 class="section-title"><?php echo e(trans('financial.sales_report')); ?></h2>

        <div class="panel-section-card py-20 px-25 mt-20">
            <form action="" method="get" class="row">
                <div class="col-12 col-lg-4">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="input-label"><?php echo e(trans('public.from')); ?></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="dateInputGroupPrepend">
                                            <i data-feather="calendar" width="18" height="18" class="text-white"></i>
                                        </span>
                                    </div>
                                    <input type="text" name="from" autocomplete="off" class="form-control <?php if(!empty(request()->get('from'))): ?> datepicker <?php else: ?> datefilter <?php endif; ?>"
                                           aria-describedby="dateInputGroupPrepend"
                                           value="<?php echo e(request()->get('from',null)); ?>"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="form-group">
                                <label class="input-label"><?php echo e(trans('public.to')); ?></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="dateInputGroupPrepend">
                                            <i data-feather="calendar" width="18" height="18" class="text-white"></i>
                                        </span>
                                    </div>
                                    <input type="text" name="to" autocomplete="off" class="form-control <?php if(!empty(request()->get('to'))): ?> datepicker <?php else: ?> datefilter <?php endif; ?>"
                                           aria-describedby="dateInputGroupPrepend"
                                           value="<?php echo e(request()->get('to',null)); ?>"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="row">
                        <div class="col-12 col-lg-5">
                            <div class="form-group">
                                <label class="input-label"><?php echo e(trans('webinars.webinar')); ?></label>
                                <select name="webinar_id" class="form-control select2">
                                    <option value="all"><?php echo e(trans('public.all')); ?></option>

                                    <?php $__currentLoopData = $userWebinars; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $webinar): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($webinar->id); ?>" <?php if(request()->get('webinar_id',null) == $webinar->id): ?> selected <?php endif; ?>><?php echo e($webinar->title); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-12 col-lg-7">
                            <div class="row">
                                <div class="col-12 col-lg-8">
                                    <div class="form-group">
                                        <label class="input-label"><?php echo e(trans('quiz.student')); ?></label>

                                        <select name="student_id" class="form-control select2">
                                            <option value="all"><?php echo e(trans('public.all')); ?></option>

                                            <?php $__currentLoopData = $students; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($student->id); ?>" <?php if(request()->get('student_id',null) == $student->id): ?> selected <?php endif; ?>><?php echo e($student->full_name); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-4">
                                    <div class="form-group">
                                        <label class="input-label"><?php echo e(trans('public.type')); ?></label>
                                        <select class="form-control" id="type" name="type">
                                            <option value="all"
                                                    <?php if(request()->get('type',null) == 'all'): ?> selected="selected" <?php endif; ?>><?php echo e(trans('public.all')); ?></option>
                                            <option value="webinar"
                                                    <?php if(request()->get('type',null) == 'webinar'): ?> selected="selected" <?php endif; ?>><?php echo e(trans('webinars.webinar')); ?></option>
                                            <option value="meeting"
                                                    <?php if(request()->get('type',null) == 'meeting'): ?> selected="selected" <?php endif; ?>><?php echo e(trans('public.meeting')); ?></option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-2 d-flex align-items-center justify-content-end">
                    <button type="submit" class="btn btn-sm btn-primary w-100 mt-2"><?php echo e(trans('public.show_results')); ?></button>
                </div>
            </form>
        </div>
    </section>

    <?php if(!empty($sales) and !$sales->isEmpty()): ?>
        <section class="mt-35">
            <div class="d-flex align-items-start align-items-md-center justify-content-between flex-column flex-md-row">
                <h2 class="section-title"><?php echo e(trans('financial.sales_history')); ?></h2>
            </div>

            <div class="panel-section-card py-20 px-25 mt-20">
                <div class="row">
                    <div class="col-12 ">
                        <div class="table-responsive">
                            <table class="table text-center custom-table">
                                <thead>
                                <tr>
                                    <th><?php echo e(trans('quiz.student')); ?></th>
                                    <th class="text-left"><?php echo e(trans('product.content')); ?></th>
                                    <th class="text-center"><?php echo e(trans('public.price')); ?></th>
                                    <th class="text-center"><?php echo e(trans('public.discount')); ?></th>
                                    <th class="text-center"><?php echo e(trans('financial.total_amount')); ?></th>
                                    <th class="text-center"><?php echo e(trans('financial.income')); ?></th>
                                    <th class="text-center"><?php echo e(trans('public.type')); ?></th>
                                    <th class="text-center"><?php echo e(trans('public.date')); ?></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>

                                <?php $__currentLoopData = $sales; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sale): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td class="text-left">
                                            <div class="user-inline-avatar d-flex align-items-center">
                                                <div class="avatar">
                                                    <img src="<?php echo e(!empty($sale->buyer) ? $sale->buyer->getAvatar() : ''); ?>" class="img-cover" alt="">
                                                </div>
                                                <div class=" ml-5">
                                                    <span class="d-block"><?php echo e(!empty($sale->buyer) ? $sale->buyer->full_name : ''); ?></span>
                                                    <span class="mt-5 font-12 text-gray d-block"><?php echo e(!empty($sale->buyer) ? $sale->buyer->email : ''); ?></span>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            <div class="text-left">
                                                <?php if(!empty($sale->webinar_id)): ?>
                                                    <span class="d-block"><?php echo e(!empty($sale->webinar) ? $sale->webinar->title : ''); ?></span>
                                                    <span class="d-block font-12 text-gray">Id: <?php echo e(!empty($sale->webinar) ? $sale->webinar->id : ''); ?></span>
                                                <?php elseif(!empty($sale->meeting_id)): ?>
                                                    <?php echo e(trans('meeting.reservation_appointment')); ?>

                                                <?php endif; ?>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            <?php if($sale->payment_method == \App\Models\Sale::$subscribe): ?>
                                                <span class=""><?php echo e(trans('financial.subscribe')); ?></span>
                                            <?php else: ?>
                                                <span><?php echo e(addCurrencyToPrice(handlePriceFormat($sale->amount))); ?></span>
                                            <?php endif; ?>
                                        </td>
                                        <td class="align-middle"><?php echo e(addCurrencyToPrice(handlePriceFormat($sale->discount) ?? 0)); ?></td>
                                        <td class="align-middle">
                                            <?php if($sale->payment_method == \App\Models\Sale::$subscribe): ?>
                                                <span class=""><?php echo e(trans('financial.subscribe')); ?></span>
                                            <?php else: ?>
                                                <span><?php echo e(addCurrencyToPrice(handlePriceFormat($sale->total_amount))); ?></span>
                                            <?php endif; ?>
                                        </td>
                                        <td class="align-middle">
                                            <span><?php echo e(addCurrencyToPrice(handlePriceFormat($sale->getIncomeItem()))); ?></span>
                                        </td>
                                        <td class="align-middle">
                                            <?php switch($sale->type):
                                                case (\App\Models\Sale::$webinar): ?>
                                                <?php if(!empty($sale->webinar)): ?>
                                                    <span class="text-primary"><?php echo e(trans('webinars.'.$sale->webinar->type)); ?></span>
                                                <?php endif; ?>
                                                <?php break; ?>;
                                                <?php case (\App\Models\Sale::$meeting): ?>
                                                <span class="text-dark-blue"><?php echo e(trans('meeting.appointment')); ?></span>
                                                <?php break; ?>;
                                                <?php case (\App\Models\Sale::$subscribe): ?>
                                                <span class="text-danger"><?php echo e(trans('financial.subscribe')); ?></span>
                                                <?php break; ?>;
                                                <?php case (\App\Models\Sale::$promotion): ?>
                                                <span class="text-warning"><?php echo e(trans('panel.promotion')); ?></span>
                                                <?php break; ?>;
                                            <?php endswitch; ?>
                                        </td>
                                        <td class="align-middle">
                                            <span><?php echo e(dateTimeFormat($sale->created_at, 'j M Y H:i')); ?></span>
                                        </td>
                                    </tr>

                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="my-30">
                <?php echo e($sales->appends(request()->input())->links('vendor.pagination.panel')); ?>

            </div>

        </section>
    <?php else: ?>
        <?php echo $__env->make(getTemplate() . '.includes.no-result',[
              'file_name' => 'sales.png',
              'title' => trans('financial.sales_no_result'),
              'hint' => nl2br(trans('financial.sales_no_result_hint')),
          ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/vendors/daterangepicker/daterangepicker.min.js"></script>
    <script src="/assets/default/vendors/select2/select2.min.js"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate() .'.panel.layouts.panel_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/aimsity/public_html/lms/resources/views/web/default/panel/financial/sales.blade.php ENDPATH**/ ?>