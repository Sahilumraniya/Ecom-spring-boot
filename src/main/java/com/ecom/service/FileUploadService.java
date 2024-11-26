package com.ecom.service;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadService {

	public boolean fileUploadOnLocal(MultipartFile file) {
		try {
			String productImagePath = "E:\\code\\Spring boot\\ecom\\src\\main\\webapp\\images\\products\\";
			File f = new File(productImagePath,file.getOriginalFilename());
			byte b[] = file.getBytes();
			FileUtils.writeByteArrayToFile(f, b);
			return true;
		}catch(Exception e) {
			System.out.println("ERROR :: File upload service :: upload on local");
			e.printStackTrace();
			return false;
		}
	}
}
