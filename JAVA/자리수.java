//자리수 더하기

import java.util.*;

public class Solution {
    public int solution(int n) {
        int answer = 0;
        int tmp = 0; 
        
        while(n != 0){
            tmp = n%10;
            n = n/10;
            answer += tmp;
        }

        return answer;
    }
}