package com.upload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.simple.JSONArray;


public class Uploadservlet extends HttpServlet {
       
	File file=null;
	int maxFileSize=1024 * 1024;
	int maxBuffSize = 1024 * 1024;
	String fileStorePath= "D:\\Excel";
	String tempPath="D:\\Excel";
	
	
	
    protected void service(HttpServletRequest request,HttpServletResponse response)
    		throws ServletException,IOException {
    	
    	response.setContentType("application/json");
    	PrintWriter out=response.getWriter();
        	
      DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
      diskFileItemFactory.setSizeThreshold(maxBuffSize);
      diskFileItemFactory.setRepository(new File(tempPath));
      
      ServletFileUpload upload =new ServletFileUpload(diskFileItemFactory);
     upload.setFileSizeMax(maxFileSize);
      
      try {
    	  List fileItem= upload.parseRequest(request);
    	  Iterator iterator=fileItem.iterator();
    	  
    	  while(iterator.hasNext()) {
    		  FileItem file_item = (FileItem)iterator.next();
    		  if(!file_item.isFormField()) {
    			  String file_name = file_item.getName();
    			  file = new File(fileStorePath + "\\" + file_name);
    			  	file_item.write(file);
    			  	
    			  		
    		  }
    		  
    	  }
    	  Readexcelfile readexcelfile = new Readexcelfile();
    	 JSONArray array= readexcelfile.readExcel(file.getAbsolutePath());
    	  out.println(array);
      }
      catch(FileUploadException e) {
    	  e.printStackTrace();
      }
      catch(Exception e) {
    	  e.printStackTrace();
      }
      
    }
    }