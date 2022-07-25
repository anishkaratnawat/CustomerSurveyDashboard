package com.upload;

import java.io.File;
import java.io.IOException;


import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.json.simple.JSONArray;

public class Readexcelfile{
	
	public JSONArray readExcel(String file_path) {
		JSONArray array = new JSONArray();
		try {
			Workbook workbook=  WorkbookFactory.create(new File(file_path));
			Sheet sheet = workbook.getSheetAt(0);
			DataFormatter  dataFormatter = new DataFormatter();
			
			// 
			for(Row row : sheet) {
				JSONArray value = new JSONArray();
			for(Cell cell : row) {
				String cell_value = dataFormatter.formatCellValue(cell);
				value.add(cell_value);
				
			}
			array.add(value);
		}
		workbook.close();
				
		 
		
		
		
		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
		return array;
		
	}
	
	
}