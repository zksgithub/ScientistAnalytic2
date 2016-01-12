package com.helloever.test;

import java.io.IOException;
import java.sql.SQLException;
import org.jdom2.JDOMException;

import com.helloever.tool.ScientistFileStructured;

public class T2 {
	public static void main(String[] args) throws IOException, ClassNotFoundException, SQLException, JDOMException {
		
		ScientistFileStructured.generateHtml("刘振兴");
}
}

