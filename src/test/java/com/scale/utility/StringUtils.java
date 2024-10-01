package com.scale.utility;


import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils {

    public static String getMatchedGroupByIndexFromAString(String string, String regex, int groupIndex) {
        String returnedMatch = null;
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(string);
        if (matcher.find()) {
            returnedMatch = matcher.group(groupIndex);
        }
        return returnedMatch;
    }

    public static ArrayList<String> getTxtItemsAsList(String filepath) {
        String projectDir = System.getProperty("user.dir");
        try {
            Scanner s = new Scanner(new File(projectDir + filepath));
            ArrayList<String> list = new ArrayList<>();
            while (s.hasNextLine()) {
                list.add(s.nextLine());
            }
            s.close();
            return list;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("ApplicationConfig.properties not found at " + projectDir + filepath);
        }
    }

    public static int getRandomIntNumberInRange(int min, int max) {
        Random random = new Random();
        return random.nextInt(max - min) + min;
    }
}
