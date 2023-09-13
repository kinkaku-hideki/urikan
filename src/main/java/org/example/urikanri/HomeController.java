package org.example.urikanri;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;


@Controller
public class HomeController {
    private final TaskListDao dao;
    @Autowired
    HomeController(TaskListDao dao){
        this.dao = dao;
    }
    record TaskItem(String id, String task,String deadline, String memo, boolean done){}

}
