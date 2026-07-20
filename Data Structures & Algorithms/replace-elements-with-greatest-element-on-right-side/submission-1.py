class Solution:
    def replaceElements(self, arr: List[int]) -> List[int]:
        result = [0]*len(arr)
        rightmax = -1
        for i in range(len(arr)-1,-1,-1):
            result[i] = rightmax
            if arr[i] > rightmax:
                rightmax = arr[i]
        return result

