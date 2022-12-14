<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "WHISPER");
    musicInfo.put("album", "BE AWARE");
    musicInfo.put("singer", "더보이즈");
    musicInfo.put("thumbnail", "https://w.namu.la/s/31ed37d70b71ac2a057adf82e4e702e00a9aadb4b958e0482da339e610cb76a89b314ba8dee686f794d44b545834cae3639d5c58e6ae4086886c15fe9f1e997d1f5f4f438492179b51d03e0b53d2ce29fdbb31006cedd823bff28b1f1b4435d76d985ba9010d3d0ca97fb78141eb0c04");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "WILLIE WEEKS, KYLER NIKO");
    musicInfo.put("lyricist", "조윤경, 제이콥, 선우");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "MAVERICK");
    musicInfo.put("album", "MAVERICK");
    musicInfo.put("singer", "더보이즈");
    musicInfo.put("thumbnail", "https://w.namu.la/s/e5ddd891c30fbf1d9ac434624c440ca5abeb184a475df12f467d38d1b67e2088eb02122c0b07d360ebc552122d8a9d81a9198dc7135dc8890aa4958d6aa7f1c298108e6bc80c286c69127dcdc75fd403fc8f21b5a6416a9dd46467c267c5ce15e87a81ff8ec98c9e9b458033859c73cb");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "KYLER NIKO / RONNIE ICON / LUDWIG LINDELL");
    musicInfo.put("lyricist", "조윤경 / DANKE / KYLER NIKO / RONNIE ICON");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "Russian Roulette");
    musicInfo.put("album", "MAVERICK");
    musicInfo.put("singer", "더보이즈");
    musicInfo.put("thumbnail", "https://w.namu.la/s/e5ddd891c30fbf1d9ac434624c440ca5abeb184a475df12f467d38d1b67e2088eb02122c0b07d360ebc552122d8a9d81a9198dc7135dc8890aa4958d6aa7f1c298108e6bc80c286c69127dcdc75fd403fc8f21b5a6416a9dd46467c267c5ce15e87a81ff8ec98c9e9b458033859c73cb");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "JJ EVANS (153/JOOMBAS) / FLOW BLOW");
    musicInfo.put("lyricist", "조윤경");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "THRILL RIDE");
    musicInfo.put("album", "THRILL-ING");
    musicInfo.put("singer", "더보이즈");
    musicInfo.put("thumbnail", "https://w.namu.la/s/6757d6d2dd7e52daefc7790f38eb47d4f7e2435bb5361586b94cedddbc0df2ce0834d82451e99d95e6e5049c6f81745937f9d3af423a0cdc0c6d9a5a93681e4447315e07a30fce4be0fc582bd9467684674434b8d01230a1567f7b9268ccad8ad6b3837a381c9e5c9179357ed2f75d8e");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "Albin Nordqvist / Gabriel Brandes");
    musicInfo.put("lyricist", "조윤경 / 선우 / 에릭");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "Dancing Till We Drop");
    musicInfo.put("album", "THRILL-ING");
    musicInfo.put("singer", "더보이즈");
    musicInfo.put("thumbnail", "https://w.namu.la/s/6757d6d2dd7e52daefc7790f38eb47d4f7e2435bb5361586b94cedddbc0df2ce0834d82451e99d95e6e5049c6f81745937f9d3af423a0cdc0c6d9a5a93681e4447315e07a30fce4be0fc582bd9467684674434b8d01230a1567f7b9268ccad8ad6b3837a381c9e5c9179357ed2f75d8e");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "Chris Wahle");
    musicInfo.put("lyricist", "danke");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "The Stealer");
    musicInfo.put("album", "CHASE");
    musicInfo.put("singer", "더보이즈");
    musicInfo.put("thumbnail", "https://w.namu.la/s/f4d231d462242e712621726019182326db23dd88afec5e23b46300fc95c21d8d2dfdf4af1a7529d154dae2846a00ddaadf4ccd905ae591d99519aa1d2892bba845def4b0dab970de16c6b42aca3cf6ecc578782ec2d2cb8cae447a58c3e5b76cf52169367486fdcba37f509ad41fdabf");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "Coach & Sendo / Theo Lawrence / Yuki");
    musicInfo.put("lyricist", "Kenzie / 선우");
    musicList.add(musicInfo);
%>	
<div id="list" class="mt-3">
	<h4 class="font-weight-bold">곡 목록</h4>	
	
	<table class="table text-center">
		<thead>
			<tr>
				<th>no</th>
				<th>제목</th>
				<th>앨범</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Map<String, Object> music : musicList) {
				int no = (int) music.get("id");
				String title = (String) music.get("title");
				String album = (String) music.get("album");
			%>
			<tr>
				<td><%=no%></td>
				<td><a href="detail.jsp?id=<%=no%>"><%=title%></a></td>
				<td><%=album%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</div>