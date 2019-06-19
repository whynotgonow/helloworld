package com.example.helloworld.controller;

import com.example.helloworld.vo.Content;
import com.example.helloworld.vo.Operation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;


@Controller
@Slf4j
public class DemoApp {


    @RequestMapping("/")
    public String getTestMethod(Model model){

        final List<Operation> operationList = new ArrayList<>();

        model.addAttribute("title","hello world");
        operationList.add(new Operation("hello","/hello","get"));
        operationList.add(new Operation("echo","/echo", "post"));

        model.addAttribute("operationList", operationList);

        log.info("Thread {} get testMethodList size {}", Thread.currentThread().getId(), operationList.size());

        return "index";
    }

    @RequestMapping(value = "/hello", method = GET)
    @ResponseBody
    public String hello(){
        log.info("Thread {} say hello ", Thread.currentThread().getId());
        return "ok";
    }

    @RequestMapping(value = "/echo", method = RequestMethod.POST)
    public String echo(@ModelAttribute Content content, Model model){
        content.setValue("server echo:" + content.getValue());
        model.addAttribute("content",content);
        log.info("Thread {} echo {} ", Thread.currentThread().getId(), content.getValue());
        return "echo";
    }

}

