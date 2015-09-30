package com.helloever.test;
import java.io.File;   

import java.io.FileOutputStream;   

import java.io.*;   
import java.sql.SQLException;
import java.util.List;

import org.ansj.domain.Term;
import org.ansj.splitWord.analysis.BaseAnalysis;
import org.ansj.splitWord.analysis.NlpAnalysis;
import org.ansj.splitWord.analysis.ToAnalysis;

import com.helloever.db.dao.Dao;

public class T3 {   

   
    public static void main(String[] args) throws ClassNotFoundException, SQLException {   

    	List<Term> parse1 = ToAnalysis.parse("中国积极参与亚太经合组织的活动，参加了东盟-中日韩和中国-东盟首脑非正式会晤。");
    	List<Term> parse2 = BaseAnalysis.parse("中国积极参与亚太经合组织的活动，参加了东盟-中日韩和中国-东盟首脑非正式会晤。");
    	//List<Term> parse3 = NlpAnalysis.parse("让战士们过一个欢乐祥和的新春佳节。");
    	List<Term> parse = NlpAnalysis.parse("毕业于武进县立新坊桥小学。考入江苏省立常州中学初中部。初中时读四大名著中《水浒传》、《三国演义》、《西游记》，以及《东周列国志》和武侠小说《七侠五义》、《江湖奇侠传》、《镜花缘》等等。");
        System.out.println(parse);
       // System.out.println(parse1);
        //System.out.println(parse2);
       // System.out.println(parse3);

}
}