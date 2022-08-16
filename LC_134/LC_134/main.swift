class Solution {
    func running(tank: Int,startIndex: Int, _ gas: [Int], _ cost: [Int]) -> Bool{
        var nextStation = startIndex + 1, tank = tank, currentStation = startIndex
        if nextStation >= gas.count {
            nextStation = 0
        }
        while nextStation != startIndex {
            if tank - cost[currentStation] <= 0  {
                return false
            }
            tank = tank - cost[currentStation] + gas[nextStation]
            currentStation = nextStation
            nextStation += 1
            if nextStation >= gas.count {
                nextStation = 0
            }
        }
        
        if tank - cost[currentStation] < 0 {
            return false
        }
        return true
    }
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var tank = 0
        if gas.count == 1 && cost[0] <= gas[0] {
            return 0
        }
        for i in 0..<gas.count {
            if cost[i] + 1 <= gas[i] {
                tank = gas[i]
                if running(tank: tank, startIndex: i, gas, cost) {
                    return i
                }
            }
            else{
                tank = 0
            }
        }
        return -1
    }
}


let gas = [5,1,2,3,4], cost = [4,4,1,5,1]
var solution = Solution()
print(solution.canCompleteCircuit(gas, cost))
