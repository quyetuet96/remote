function guiBieuMau(e){
	var email = "9xgiay@gmail.com";
	var subject = "DS KHACH HANG";
	var s = SpreadsheetApp.getActiveSheet();
	var columns = s.getRange(1, 1, 1, s.getLastColumn()).getValues()[0];
	var message= "";

	for (var keys in columns){
		var key = columns[keys];
		if(e.namedValues[key]&&(e.namedValues[key]!="")){
			message +=key + ' : ' + e.namedValues[key] + "\n\n";
		}
	}
	MailApp.sendEmail(email, subject, message);
}