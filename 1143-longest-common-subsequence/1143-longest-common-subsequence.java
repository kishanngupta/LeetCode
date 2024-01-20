class Solution {
    public int longestCommonSubsequence(String text1, String text2) {
        int l1 = text1.length();
		int l2 = text2.length();
		Integer dp[][] = new Integer[l1][l2];
		return calculate(l1-1, l2-1, text1, text2, dp);
    }
    
    public int calculate(int i1, int i2, String s, String t, Integer[][] dp) {

		if ((i1 < 0) || (i2 < 0)) {
			return 0;
		}

		if (dp[i1][i2] != null) {
			return dp[i1][i2];
		}


		int count = 0;
		if(s.charAt(i1)==t.charAt(i2)) {
			count = 1 + calculate(i1-1, i2-1,s,t,dp);
		} else {
			int first = calculate(i1-1, i2,s,t,dp);
			int second = calculate(i1, i2-1,s,t,dp);
			count = Math.max(first, second);
		}
		dp[i1][i2] = count;
		return dp[i1][i2];
	}
}