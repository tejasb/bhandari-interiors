package com.interiors.app.valueobjects;

import java.io.Serializable;

public class Menu implements Serializable{
	private String label;
	private String href;
	private String style;
	
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
}
