package com.javaproject.nobrand;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController {
		
//	@RequestMapping(value = "/image/upload", method = RequestMethod.POST)
//	public ModelAndView image(MultipartHttpServletRequest request) throws Exception {
//		
//		ModelAndView mav = new ModelAndView("jsonView");
//
//		MultipartFile uploadFile = request.getFile("upload");
//
//		String originalFileName = uploadFile.getOriginalFilename();
//		
//		String ext = originalFileName.substring(originalFileName.indexOf("."));
//		
//		String newFileName = UUID.randomUUID() + ext;
//		
//		String realPath = request.getServletPath();
//		String realPath2 = "C:/Users/jewel/jdk11/ProjectNoBrand/src/main/webapp/resources/goods/";
//		System.out.println("리얼패스");
//		System.out.println(realPath2);
//		String savePath = realPath2 + newFileName;
////		String savePath = realPath2 + newFileName;
//		
//		String uploadPath = "http://localhost/nobrand/resources/goods/" + newFileName; 
//		System.out.println("업로드패스");
//		System.out.println(uploadPath);
//
//        File file = new File(savePath);
//		System.out.println("뉴파일");
//		
//		uploadFile.transferTo(file);
//		System.out.println("트랜스퍼");
//		mav.addObject("uploaded", true);
////		mav.addObject("url", realPath2);
////		mav.addObject("url", savePath);
//		mav.addObject("url", uploadPath);
//		System.out.println(mav);
//		JSONObject json = new JSONObject();
//		json.put("uploaded", true);
//		json.put("url", uploadPath);
//		System.out.println(json);
//		return mav;
//	}
	
//	@Value("#{props['editor.img.save.url']}")
//	private String saveUrl;
//
//	@Value("#{props['editor.img.load.url']}")
//	private String loadUrl;

	@RequestMapping(value = "/image/upload")
	public ModelAndView image(@RequestParam Map<String, Object> map, MultipartHttpServletRequest request)
			throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		List<MultipartFile> fileList = request.getFiles("upload");

		String imgPath = null;

		for (MultipartFile mf : fileList) {
			if (fileList.get(0).getSize() > 0) {
				String originFileName = mf.getOriginalFilename(); // 원본 파일 명
				String ext = FilenameUtils.getExtension(originFileName);
				String newInfImgFileName = "img_" + UUID.randomUUID() + "." + ext;

				imgPath = "C:/Users/jewel/jdk11/ProjectNoBrand/src/main/webapp/resources/goods/" + newInfImgFileName;

				File file = new File(imgPath);

				mf.transferTo(file);

			}
		}

		mv.addObject("uploaded", true);
		mv.addObject("url", imgPath);
		return mv;
	}
		
//	@ResponseBody
//	@RequestMapping(value = "/common/fms/ckeditor5Upload.do", method = RequestMethod.POST)
//    public void fileUpload(@RequestParam("file") MultipartFile file, MultipartHttpServletRequest multiRequest, HttpServletRequest request, HttpServletResponse response) {
//		try {
//	    	final String real_save_path = "/contents/";
//
//	    	// 폴더가 없을 경우 생성
//	    	File saveFolder = new File(real_save_path);
//    		if(!saveFolder.exists() || saveFolder.isFile()) {
//    			saveFolder.mkdirs();
//    		}
//    		
//			final Map<String, MultipartFile> files = multiRequest.getFileMap();
//			MultipartFile fileload = (MultipartFile)files.get("upload");
//			
//		    //filename 취득
//		    String fileName = fileload.getOriginalFilename();
//
//		    int index = fileName.lastIndexOf(".");
//			String ext = fileName.substring(index+1);
//			Random ran = new Random(System.currentTimeMillis());
//			fileName = System.currentTimeMillis()+"_"+(int)(ran.nextDouble()*10000)+"."+ext;
//
//		    //폴더 경로 설정
//		    String newfilename = real_save_path + File.separator + fileName;
//		    fileload.transferTo(new File(newfilename));
//
//			JSONObject outData = new JSONObject();
//			outData.put("uploaded", true);
//			outData.put("url", request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/nobrand/common/fms/getImageForContents.do?fileNm=" + fileName);
//			response.setContentType("application/json");
//			response.setCharacterEncoding("UTF-8");
//			response.getWriter().print(outData.toString());
//	    } catch (Exception e) {
//	    	System.out.println("오류발생");
//	    }
//	}
//	@RequestMapping("/common/fms/getImageForContents.do")
//	public void getImageForContents(ModelMap model, @RequestParam Map<String, Object> commandMap, HttpServletResponse response) throws Exception {
//	    String fileNm = (String)commandMap.get("fileNm");
//	    String fileStr = "contents/";
//
//	    File tmpDir = new File(fileStr);
//	    if(!tmpDir.exists()) {
//	        tmpDir.mkdirs();
//	    }
//
//	    FileInputStream fis = null;
//	    BufferedInputStream in = null;
//	    ByteArrayOutputStream bStream = null;
//
//	    try {
//
//	        fis = new FileInputStream(new File(fileStr, fileNm));
//	        in = new BufferedInputStream(fis);
//	        bStream = new ByteArrayOutputStream();
//
//	        int imgByte;
//	        while ((imgByte = in.read()) != -1) {
//	            bStream.write(imgByte);
//	        }
//
//	        String type = "";
//	        String ext = fileNm.substring(fileNm.lastIndexOf(".") + 1).toLowerCase();
//
//	        if ("jpg".equals(ext)) {
//	            type = "image/jpeg";
//	        } else {
//	            type = "image/" + ext;
//	        }
//
//	        response.setHeader("Content-Type", type);
//	        response.setContentLength(bStream.size());
//
//	        bStream.writeTo(response.getOutputStream());
//
//	        response.getOutputStream().flush();
//	        response.getOutputStream().close();
//
//	    } finally {
//	    	fis.close();
//	    	in.close();
//	    	bStream.close();        
//	    }
//	}
	
}