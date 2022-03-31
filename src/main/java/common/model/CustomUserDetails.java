package common.model;

import common.entity.User;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.List;

//Mặc định Spring Security sử dụng một đối tượng UserDetails để chứa toàn bộ thông tin người dùng.
//Do đó, chúng ta cần tạo ra một class giúp chuyển thông tin của User vào UserDetails.
public class CustomUserDetails implements UserDetails {

    private static final long serialVersionUID = 1L;

    @Getter
    @Setter
    private User user;

    private List<SimpleGrantedAuthority> authorities = new ArrayList<>();

    public List<SimpleGrantedAuthority> getAuthorities() {
        return authorities;
    }

    public void setAuthorities(List<SimpleGrantedAuthority> authorities) {
        this.authorities = authorities;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
