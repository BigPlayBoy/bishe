package com.sanqing.dao;

import com.sanqing.po.MessageBoard;
import com.sanqing.util.Page;

import java.util.List;

public interface MessageBoardDAO {
 boolean insertMessage(MessageBoard message);
    List<MessageBoard> findMessageByName(String username);
    List<MessageBoard> findMessageByTheme(String theme);
    List<MessageBoard> findAllMessage( );
    int findMessageCount();
List<MessageBoard> findMessageByPage(Page page);
}

