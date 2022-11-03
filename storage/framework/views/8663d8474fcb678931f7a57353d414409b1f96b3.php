<div class="accordion-row bg-white rounded-sm panel-shadow mt-20 py-15 py-lg-30 px-10 px-lg-20">
    <div class="d-flex align-items-center justify-content-between " role="tab" id="quiz_<?php echo e(!empty($quizInfo) ? $quizInfo->id :'record'); ?>">
        <div class="font-weight-bold text-dark-blue" href="#collapseQuiz<?php echo e(!empty($quizInfo) ? $quizInfo->id :'record'); ?>" aria-controls="collapseQuiz<?php echo e(!empty($quizInfo) ? $quizInfo->id :'record'); ?>" data-parent="#quizzesAccordion" role="button" data-toggle="collapse" aria-expanded="true">
            <span><?php echo e(!empty($quizInfo) ? $quizInfo->title : trans('public.add_new_quizzes')); ?></span>
        </div>

        <div class="d-flex align-items-center">
             <a href="/panel/webinar-quiz/<?php echo e(!empty($quizInfo) ? $quizInfo->id :'record'); ?>/delete" class="delete-action btn btn-sm btn-transparent text-gray">
                                        <i data-feather="trash-2" class="mr-10 cursor-pointer" height="20"></i>
                                    </a>
                                    
            <i class="collapse-chevron-icon" data-feather="chevron-down" height="20" href="#collapseQuiz<?php echo e(!empty($quizInfo) ? $quizInfo->id :'record'); ?>" aria-controls="collapseQuiz<?php echo e(!empty($quizInfo) ? $quizInfo->id :'record'); ?>" data-parent="#quizzesAccordion" role="button" data-toggle="collapse" aria-expanded="true"></i>
           
        </div>
    </div>

    <div id="collapseQuiz<?php echo e(!empty($quizInfo) ? $quizInfo->id :'record'); ?>" aria-labelledby="quiz_<?php echo e(!empty($quizInfo) ? $quizInfo->id :'record'); ?>" class=" collapse <?php if(empty($quizInfo)): ?> show <?php endif; ?>" role="tabpanel">
         
        <div class="panel-collapse text-gray">
            <?php echo $__env->make('web.default.panel.quizzes.create_quiz_form',
                    [
                        'inWebinarPage' => true,
                        'selectedWebinar' => $webinar,
                        'quiz' => $quizInfo ?? null,
                        'quizQuestions' => !empty($quizInfo) ? $quizInfo->quizQuestions : [],
                        'chapters' => $webinar->chapters,
                    ]
                , \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </div>
</div>
<?php /**PATH /home/aimsity/public_html/lms/resources/views/web/default/panel/webinar/create_includes/accordions/quiz.blade.php ENDPATH**/ ?>