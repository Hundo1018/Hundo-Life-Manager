//TODO: 確實定義筆記本該儲存的資料,richtext，以及CRUD處理
//TODO: 拆分儲存檔案的部分，並做出對資料庫的CRUD的interface
pub struct Note{
    content:String,//XXX:應當有自己的結構，因為不只有文字，可能包含圖片和多個段落,richtext
    cue:String,
    summary:String,
}