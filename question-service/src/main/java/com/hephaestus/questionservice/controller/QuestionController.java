package com.hephaestus.questionservice.controller;


import com.hephaestus.questionservice.model.Question;
import com.hephaestus.questionservice.model.QuestionWrapper;
import com.hephaestus.questionservice.model.Response;
import com.hephaestus.questionservice.service.QuestionService;
import org.apache.logging.log4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("question")
public class QuestionController {

    @Autowired
    QuestionService questionService;

    @Autowired
    Environment environment;

//    private static final Logger logger = (Logger) LoggerFactory.getLogger(QuestionController.class);

    @GetMapping("allQuestion")
    public ResponseEntity<List<Question>> getAllQuestion(){
        try {
            return questionService.getAllQuestions();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @GetMapping("category/{category}")
    public ResponseEntity<List<Question>> getAllJavaQuestions(@PathVariable String category){
        try {
            return questionService.getQuestionsByCategory(category);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @PostMapping("add")
    public ResponseEntity<String> addQuestion(@RequestBody Question question){
        try {
            return questionService.addQuestion(question);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @DeleteMapping("delete/{id}")
    public ResponseEntity<String> deleteQuestion(@PathVariable int id){
        try {
            return questionService.deleteQuestion(id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @GetMapping("generate")
    public ResponseEntity<List<Integer>> getQuestionsForQuiz(@RequestParam String categoryName, @RequestParam Integer numQuestions) {
        try {
            return questionService.getQustionsForQuiz(categoryName, numQuestions);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @PostMapping("getQuestions")
    public ResponseEntity<List<QuestionWrapper>> getQuestionsFromId(@RequestBody List<Integer> questionIds) {
        try {
            return questionService.getQuestionsFromId(questionIds);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @PostMapping("getScore")
    public ResponseEntity<Integer> getScore(@RequestBody List<Response> responses) {
        try {
            return questionService.getScore(responses);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
