class Solution:
    def isValid(self, s: str) -> bool:
        check = []
        mapping = {')': '(', '}': '{', ']': '['}
        for num in s:
            if num in '({[':
                check.append(num)
            else:
                if check and check[-1] == mapping[num]:
                    check.pop()
                else:
                    return False
        return not check