package com.sanqing.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.po.MessageBoard;
import com.sanqing.po.Student;
import com.sanqing.service.MessageBoardService;
import com.sanqing.service.MessageBoardServiceImpl;
import org.apache.log4j.Logger;

import java.util.Map;

/**
 * Created by jarvis on 2017/2/20.
 */
public class LiuYan extends ActionSupport {
    private static Logger logger = Logger.getLogger(LiuYan.class);

    private String UserName;
    private String Theme;
    private String Content;
    private String Time;
private MessageBoardService messageBoardService=new MessageBoardServiceImpl();

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getTheme() {
        return Theme;
    }

    public void setTheme(String theme) {
        Theme = theme;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    public String execute() throws Exception {
        System.out.println(UserName+"\t"+Theme+"\t"+Content+"\t"+Time);
        MessageBoard messageBoard=new MessageBoard();
        messageBoard.setContent(Content);
        messageBoard.setUserName(UserName);
        messageBoard.setTheme(Theme);
        messageBoard.setTime(Time);
messageBoardService.saveMessage(messageBoard);
        logger.info("123456789");
        return "msuccess";
        }
}
