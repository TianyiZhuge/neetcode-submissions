class Solution:
    def replaceElements(self, arr: List[int]) -> List[int]:
        k = 0
        for i in arr:
            if k <= len(arr)-2:
                arr[k] = max(arr[k+1:])
                k += 1
            else:
                arr[k] =-1
        return arr        