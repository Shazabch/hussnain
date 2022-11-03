<?php $__env->startSection('content'); ?>
    <section>
        <h2 class="section-title"><?php echo e(trans('panel.noticeboards')); ?></h2>

        <?php if(!empty($noticeboards) and !$noticeboards->isEmpty()): ?>

            <div class="panel-section-card py-20 px-25 mt-20">
                <div class="row">
                    <div class="col-12 ">
                        <div class="table-responsive">
                            <table class="table custom-table text-center ">
                                <thead>
                                <tr>
                                    <th class="text-left text-gray"><?php echo e(trans('webinars.title')); ?></th>
                                    <th class="text-center text-gray"><?php echo e(trans('site.message')); ?></th>
                                    <th class="text-center text-gray"><?php echo e(trans('public.type')); ?></th>
                                    <th class="text-center text-gray"><?php echo e(trans('public.date')); ?></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>

                                <?php $__currentLoopData = $noticeboards; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $noticeboard): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr class="noticeboard-item">
                                        <td class="text-left js-noticeboard-title text-dark-blue font-weight-500 align-middle" width="25%">
                                            <?php echo e($noticeboard->title); ?>

                                        </td>
                                        <td class="align-middle">
                                            <button type="button" class="js-view-message btn btn-sm btn-gray200"><?php echo e(trans('public.view')); ?></button>
                                            <input type="hidden" class="js-noticeboard-message" value="<?php echo e(nl2br($noticeboard->message)); ?>">
                                        </td>
                                        <td class="text-dark-blue font-weight-500 align-middle">
                                            <?php echo e(trans('public.'.$noticeboard->type)); ?>

                                        </td>
                                        <td class="js-noticeboard-time text-dark-blue font-weight-500 align-middle"><?php echo e(dateTimeFormat($noticeboard->created_at,'j M Y | H:i')); ?></td>
                                        <td class="text-right align-middle">
                                            <div class="btn-group dropdown table-actions">
                                                <button type="button" class="btn-transparent dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i data-feather="more-vertical" height="20"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a href="/panel/noticeboard/<?php echo e($noticeboard->id); ?>/edit" class="webinar-actions d-block mt-10 text-hover-primary"><?php echo e(trans('public.edit')); ?></a>
                                                    <a href="/panel/noticeboard/<?php echo e($noticeboard->id); ?>/delete" class="delete-action webinar-actions d-block mt-10 text-hover-primary"><?php echo e(trans('public.delete')); ?></a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        <?php else: ?>
            <?php echo $__env->make(getTemplate() . '.includes.no-result',[
                'file_name' => 'comment.png',
                'title' => trans('panel.comments_no_result'),
                'hint' =>  nl2br(trans('panel.comments_no_result_hint')) ,
            ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endif; ?>
    </section>

    <div class="my-30">
        <?php echo e($noticeboards->appends(request()->input())->links('vendor.pagination.panel')); ?>

    </div>

    <div class="d-none" id="noticeboardMessageModal">
        <div class="text-center">
            <h3 class="modal-title font-16 font-weight-bold text-dark-blue"></h3>
            <span class="modal-time d-block font-12 text-gray mt-15"></span>
            <p class="modal-message font-weight-500 text-gray mt-2"></p>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts_bottom'); ?>
    <script src="/assets/default/js/panel/noticeboard.min.js"></script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make(getTemplate() .'.panel.layouts.panel_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/aimsity/public_html/lms/resources/views/web/default/panel/noticeboard/index.blade.php ENDPATH**/ ?>