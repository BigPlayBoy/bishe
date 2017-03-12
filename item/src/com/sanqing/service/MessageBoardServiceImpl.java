package com.sanqing.service;

import com.sanqing.dao.MessageBoardDAO;
import com.sanqing.dao.MessageBoardDAOImpl;
import com.sanqing.po.MessageBoard;
import com.sanqing.po.Subject;
import com.sanqing.util.Page;
import com.sanqing.util.PageResult;
import com.sanqing.util.PageUtil;

import java.util.List;

public class MessageBoardServiceImpl implements MessageBoardService{
    private MessageBoardDAO messageBoardDAO=new MessageBoardDAOImpl();

    @Override
    public boolean saveMessage(MessageBoard messageBoard) {
        messageBoardDAO.insertMessage(messageBoard);
        System.out.println("保存成功");
        return false;
    }

    @Override
    public PageResult queryMessageByPage(Page page) {
        page= PageUtil.createPage(page.getEveryPage(),messageBoardDAO.findMessageCount(),page.getCurrentPage());//根据总记录数创建分页信息
        List<MessageBoard> list =messageBoardDAO.findMessageByPage(page);//通过分页信息取得试题
        PageResult result=new PageResult(page,list);//封装分页信息和记录信息，返回给调用处
        return result;
    }
}
