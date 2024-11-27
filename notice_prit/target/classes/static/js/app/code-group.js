$(document).ready(function() {
        $("#notice_listBtn").on("click", function() {
            alert("ajax 통신 start");
            $.ajax({
                type: "GET",
                url:"/code/list",
                contentType: "application/json; charset=UTF-8",
                success : function(data) {
                    alert(data);
                    alert(JSON.stringify(data));

                    $("#notice_listdata").empty();

                    let tablelist = `
                        <table border="1"  align="center"  width="80%">
                            <tr align="center"   bgcolor="lightgreen">
                              <td><b>코드 그룹</b></td>
                              <td><b>코드 이름</b></td>
                              <td><b>사용 여부</b></td>
                              <td><b>등록일자</b></td>
                              <td><b>등록자</b></td>
                           </tr>
                    `;

                    data.forEach(notice_list => {
                        tablelist += `
                        <tr align="center">
                              <td>${notice_list.code_group}</td>
                              <td>${notice_list.code_name}</td>
                              <td>${notice_list.use_yn}</td>
                              <td>${notice_list.created_date}</td>
                              <td>${notice_list.created_id}</td>
                            </tr>
                        `;
                    });

                tablelist += `</table>`;


                $("#notice_listdata").html(tablelist);
                },
                error: function(xhr, status, error) {
                    alert("code:"+xhr.status +"\n"
                          +"message:"+ xhr.responseText + "\n"
                          +"error:"+ error);
                }
                });
            });

        });