// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HuyChuong {
    struct HuyChuongInfo {
        string tenHuyChuong;
        string lyDo;
        string hinhAnh;
        uint256 thoiGianTrao;
        address nguoiNhan;
    }
    
mapping(uint256 => HuyChuongInfo) public huyChuong;
    uint256 public huyChuongCount;

    event NewHuyChuong(uint256 id, string tenHuyChuong, string lyDo, address nguoiNhan);

    function taoHuyChuong(string memory _tenHuyChuong, string memory _lyDo, string memory _hinhAnh, address _nguoiNhan) public {
        huyChuongCount++;
        huyChuong[huyChuongCount] = HuyChuongInfo(_tenHuyChuong, _lyDo, _hinhAnh, block.timestamp, _nguoiNhan);
        emit NewHuyChuong(huyChuongCount, _tenHuyChuong, _lyDo, _nguoiNhan);
    }

    function timHuyChuong(uint256 _id) public view returns (HuyChuongInfo memory) {
        return huyChuong[_id];
    }
}