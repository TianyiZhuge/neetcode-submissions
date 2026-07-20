class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        counter = 0
        ans = 0
        for i in nums:
            if i == 1:
                counter += 1
            elif i == 0:
                if counter > ans:
                    ans = counter
                counter = 0
        return max(ans,counter)
