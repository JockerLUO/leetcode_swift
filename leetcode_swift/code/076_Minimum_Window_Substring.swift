//
//  076_Minimum_Window_Substring.swift
//  leetcode_swift
//
//  Created by jocker luo on 2021/11/9.
//

import Foundation

extension Solution {
    
    func minWindow(_ s: String, _ t: String) -> String {
        let sChars = Array(s), tChars = Array(t)
        var tFreq = Dictionary(tChars.map { ($0, 1) }, uniquingKeysWith: +)
        var left = 0, shortestLen = Int.max, start = 0, matters = 0

        for (i, sChar) in sChars.enumerated() {
            guard let sCharFreq = tFreq[sChar] else {
                continue
            }

            tFreq[sChar] = sCharFreq - 1

            if sCharFreq > 0 {
                matters += 1
            }

            while matters == tChars.count {
                guard let leftFreq = tFreq[sChars[left]] else {
                    left += 1
                    continue
                }

                if leftFreq == 0 {
                    matters -= 1

                    if i - left + 1 < shortestLen {
                        shortestLen = i - left + 1
                        start = left
                    }

                }

                tFreq[sChars[left]] = leftFreq + 1
                left += 1
            }
        }

        return shortestLen == Int.max ? "" : String(sChars[start..<start + shortestLen])
    }
}
