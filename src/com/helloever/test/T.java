package com.helloever.test;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import org.jdom2.JDOMException;
import com.helloever.db.dao.Dao;
import com.helloever.tool.ScientistFileStructured;

public class T {

	/**
	 * @param args
	 * @throws IOException 
	 * @throws JDOMException 
	 * @throws SQLException 
	 * @throws ClassNotFoundException 
	 */
	public static void main(String[] args) throws IOException, JDOMException, ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
		List<String> ListOfscientist = Dao.selectScientist();
		
		for(int i =0;i<ListOfscientist.size();i++){
						 
		System.out.println("Generate NO"+i+":"+ListOfscientist.get(i));
		
		ScientistFileStructured.generateHtml(ListOfscientist.get(i));
		
		ScientistFileStructured.generateXML(ListOfscientist.get(i));
		
		}
		System.out.println("Finish!");

}
}
	
