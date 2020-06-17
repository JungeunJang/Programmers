//이상한 문자만들기

class Solution {
    public String solution(String s) {
        String answer = "";
        char c = 0;
        int index = 0;
             
        for(int i = 0; i < s.length(); i++){
        	if(s.charAt(i) == ' ') {
        		c = s.charAt(i); 
        		index =0;
                
        	}else {
                index += 1;
        		if(index%2 != 0) {
        			c = Character.toUpperCase(s.charAt(i));
        		}
        		else {
        			c = Character.toLowerCase(s.charAt(i));
        		}
        		answer += c;
        	}
        }
        return answer;
    }
}