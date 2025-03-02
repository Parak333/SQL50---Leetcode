class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
            hashMap = {} #index,value
            for i,v in enumerate(nums):
                diff = target - v
                if diff in hashMap:
                    return [hashMap[diff], i]
                hashMap[v] = i

        # for i in range(len(nums)):
        #     for j in range(i+1, len(nums)):
        #         if nums[i]+nums[j] == target:
        #             return [i,j]
                


        
        