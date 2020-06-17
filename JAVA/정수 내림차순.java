//정수내림차순으로 정렬

import java.util.Arrays;
import java.util.Collections;

class Solution {
    public long solution(long n) {
        long answer = 0;
        int length = Long.toString(n).split("").length;
        
        String[] tmp = new String[length];
        tmp = Long.toString(n).split("");
        
        String temp ="";
        
        Arrays.sort(tmp, Collections.reverseOrder());
        
        for(int i =0; i<length; i++){
        	temp += (long)Integer.parseInt(tmp[i]);        	
        }
        answer = Long.parseLong(temp);
        return answer;
    }
}