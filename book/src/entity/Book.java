package entity;

public class Book {
    private Integer id;
    private String name;
    private String type;
    private String autho;
    private String press;
    private String intro;

    public Book()
    {

    }
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setAutho(String autho) {
        this.autho = autho;
    }

    public String getAutho() {
        return autho;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getIntro() {
        return intro;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public String getPress() {
        return press;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }
}
