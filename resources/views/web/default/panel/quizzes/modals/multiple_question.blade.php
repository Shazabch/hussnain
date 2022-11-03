<div id="multipleQuestionModal" class="@if(!empty($quiz)) multipleQuestionModal{{ $quiz->id }} @endif {{ empty($question_edit) ? 'd-none' : ''}}">
    <div class="custom-modal-body">
        <h2 class="section-title after-line">{{ trans('quiz.multiple_choice_question') }}</h2>

        <div class="quiz-questions-form" data-action="/panel/quizzes-questions/{{ empty($question_edit) ? 'store' : $question_edit->id.'/update' }}">

            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <input type="hidden" name="ajax[quiz_id]" value="{{ !empty($quiz) ? $quiz->id :'' }}">
            <input type="hidden" name="ajax[type]" value="{{ \App\Models\QuizzesQuestion::$multiple }}">

            <div class="row mt-25">
                @if(!empty(getGeneralSettings('content_translate')))
                    <div class="col-12">
                        <div class="form-group">
                            <label class="input-label">{{ trans('auth.language') }}</label>
                            <select name="ajax[locale]"
                                    class="form-control {{ !empty($question_edit) ? 'js-quiz-question-locale' : '' }}"
                                    data-id="{{ !empty($question_edit) ? $question_edit->id : '' }}"
                            >
                                @foreach($userLanguages as $lang => $language)
                                    <option value="{{ $lang }}" {{ (!empty($question_edit) and !empty($question_edit->locale)) ? (mb_strtolower($question_edit->locale) == mb_strtolower($lang) ? 'selected' : '') : ($locale == $lang ? 'selected' : '') }}>{{ $language }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                @else
                    <input type="hidden" name="ajax[locale]" value="{{ $defaultLocale }}">
                @endif

 <!--                <div class="col-12 col-md-8">-->
 <!--           <div class="form-group">-->
 <!--               <label class="input-label">{{ trans('quiz.question_title') }} </label>-->
 <!--               <div class="input-group">-->
 <!--                   <div class="input-group-prepend">-->
 <!--                       <button type="button" class="input-group-text panel-file-manager" data-input="file{{ !empty($answer) ? $answer->id : '' }}" data-preview="holder">-->
 <!--                           <i data-feather="arrow-up" width="18" height="18" class="text-white"></i>-->
 <!--                       </button>-->
 <!--                   </div>-->
 <!--                   <input id="file{{ !empty($answer) ? $answer->id : '' }}" type="text" name="ajax[grade][{{ !empty($answer) ? $answer->id : 'record' }}][file]" value="{{ !empty($answer) ? $answer->image : '' }}" class="form-control lfm-input"/>-->
 <!--               </div>-->
 <!--           </div>-->
 <!--       </div>-->
 <!--<div class="col-12 col-md-4">-->
 <!--                   <div class="form-group">-->
 <!--                       <label class="input-label">{{ trans('quiz.grade') }}</label>-->
 <!--                       <input type="text" name="ajax[grade]" class="js-ajax-grade form-control" value="{{ !empty($question_edit) ? $question_edit->grade : '' }}"/>-->
 <!--                       <span class="invalid-feedback"></span>-->
 <!--                   </div>-->
 <!--               </div>-->


                <div class="col-12 col-md-8">
                    <div class="form-group">
                        <label class="input-label">{{ trans('quiz.question_title') }}</label>
                        <input type="text" name="ajax[title]" class="js-ajax-title form-control" value="{{ !empty($question_edit) ? $question_edit->title : '' }}"/>
                        <span class="invalid-feedback"></span>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="form-group">
                        <label class="input-label">{{ trans('quiz.grade') }}</label>
                        <input type="text" name="ajax[grade]" class="js-ajax-grade form-control" value="{{ !empty($question_edit) ? $question_edit->grade : '' }}"/>
                        <span class="invalid-feedback"></span>
                    </div>
                </div>
            </div>

            <div class="mt-25">
                <h2 class="section-title after-line">{{ trans('public.answers') }}</h2>

                <div class="d-flex justify-content-between align-items-center">
                    <button type="button" class="btn btn-sm btn-primary mt-15 add-answer-btn">{{ trans('quiz.add_an_answer') }}</button>

                    <div class="form-group">
                        <input type="hidden" name="ajax[current_answer]" class="js-ajax-current_answer "/>
                        <span class="invalid-feedback"></span>
                    </div>
                </div>
            </div>

            <div class="add-answer-container">

                @if (!empty($question_edit->quizzesQuestionsAnswers) and !$question_edit->quizzesQuestionsAnswers->isEmpty())
                    @foreach ($question_edit->quizzesQuestionsAnswers as $answer)
                        @include(getTemplate() .'.panel.quizzes.modals.multiple_answer_form',['answer' => $answer])
                    @endforeach
                @else
                    @include(getTemplate() .'.panel.quizzes.modals.multiple_answer_form')
                @endif
            </div>
             <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label class="input-label">Explanation <span class="braces">({{ trans('public.optional') }})</span></label>
                        <textarea name="ajax[correct]" class="js-ajax-correct form-control" rows="10">{{ !empty($question_edit) ? $question_edit->correct : '' }}</textarea>
                    </div>
                </div>
            </div>

            <div class="d-flex align-items-center justify-content-end mt-25">
                <button type="button" class="save-question btn btn-sm btn-primary">{{ trans('public.save') }}</button>
                <button type="button" class="close-swl btn btn-sm btn-danger ml-10">{{ trans('public.close') }}</button>
            </div>

        </div>
    </div>
</div>