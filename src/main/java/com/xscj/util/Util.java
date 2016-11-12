package com.xscj.util;

import java.awt.*;
import java.io.File;
import java.io.FileInputStream;

public class Util {
    public static final String FONT_FILE_PATH = "/var/lib/openshift/582302b189f5cf7463000038/app-root/repo/src/main/resources/simhei.ttf";//字体文件路径
    public static final String LOGO_FILE_PATH = "/var/lib/openshift/582302b189f5cf7463000038/app-root/repo/src/main/resources/";
    public static Font nf = null;

    static {
        if (nf == null) {
            File file = new File(FONT_FILE_PATH);
            try {
                FileInputStream fi = new FileInputStream(file);
                nf = Font.createFont(Font.TRUETYPE_FONT, fi);
                fi.close();
                nf = nf.deriveFont(Font.PLAIN, 18);
            } catch (Exception e) {
                nf = new Font("黑体", Font.BOLD, 22);
            }
        }
    }

    public static boolean isNumeric(String string) {
        for (int i = string.length(); --i >= 0; ) {
            if (!Character.isDigit(string.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static Font getBuiltInFont() {
        return nf;
    }
}
