package com.ravi.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class UploadFiles {

	private List<MultipartFile> files;

	private List<String> content;
	
	private List<String> slides;

	public List<String> left;

	public List<String> top;

	public List<String> width;
	
	public List<String> height;
	
	
	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

	public List<String> getContent() {
		return content;
	}

	public void setContent(List<String> content) {
		this.content = content;
	}

	public List<String> getSlides() {
		return slides;
	}

	public void setSlides(List<String> slides) {
		this.slides = slides;
	}

	public List<String> getLeft() {
		return left;
	}

	public void setLeft(List<String> left) {
		this.left = left;
	}

	public List<String> getTop() {
		return top;
	}

	public void setTop(List<String> top) {
		this.top = top;
	}

	public List<String> getWidth() {
		return width;
	}

	public void setWidth(List<String> width) {
		this.width = width;
	}

	public List<String> getHeight() {
		return height;
	}

	public void setHeight(List<String> height) {
		this.height = height;
	}

}
