class Solution:
    def calPoints(self, operations: List[str]) -> int:
        ans = []
        for num in operations:
            if num == '+':
                ans.append(ans[-1]+ans[-2])
            elif num == 'D':
                ans.append(ans[-1]*2)
            elif num == 'C':
                ans.pop()
            else:
                ans.append(int(num))
        final = sum(ans)
        return final