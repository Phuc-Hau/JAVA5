package com.webbanhang.utils;

public class ConvenientUtils {

	public String emailToStar(String star) {
		String sao = String.valueOf(star.charAt(0));
		int u = star.indexOf("@") - 1;
		for (int i = 0; i < star.length(); i++) {
			if (i >= u) {
				sao += String.valueOf(star.charAt(i));
			} else
				sao += "*";
		}
		
		return sao;
	}
	
	public int ranDomCapCha() {
		String capChas = "";
		for (int i = 0; i < 6; i++) {
			double randomDouble = Math.random();
			randomDouble = randomDouble * 9 + 1;
			capChas += (int) randomDouble;
		}
		return Integer.parseInt(capChas);
	}
	
}
