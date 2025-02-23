class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        hashset = set(nums)
        ret = []
        for i in range(1, len(nums)+1):
            if i not in hashset:
                ret.append(i)
        
        return ret