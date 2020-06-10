class Solution {
    public int[] solution(int n, int m) {
        int[] answer = new int[2];

        int max, min = 0;
        int tmp=0;

        if(n>m){
            max = n;
            min = m;
        }
        else{
            max = m;
            min = n;
        }

       while(max%min != 0){
            tmp = max%min;
            max = min;
            min = tmp;
            }

        answer[0] = min;
        answer[1] = n*m/min;
        return answer;
    }
}