package action;

/**
 * Created by kingwen on 2017/4/12.
 */
public class LoginAction {
    public String username="345";
    public String userpwd;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public String execute(){


        return "success";
    }


}
