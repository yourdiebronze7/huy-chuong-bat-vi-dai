// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Award {
    struct AwardInfo {
        string awardName;
        string reason;
        string image;
        uint256 timestamp;
        address recipient;
    }

    mapping(uint256 => AwardInfo) public awards;
    uint256 public awardCount;

    event NewAward(uint256 id, string awardName, string reason, address recipient);

    function createAward(string memory _awardName, string memory _reason, string memory _image, address _recipient) public {
        awardCount++;
        awards[awardCount] = AwardInfo(_awardName, _reason, _image, block.timestamp, _recipient);
        emit NewAward(awardCount, _awardName, _reason, _recipient);
    }

    function getAward(uint256 _id) public view returns (AwardInfo memory) {
        return awards[_id];
    }
}