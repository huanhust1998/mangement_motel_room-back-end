package common.security;

import common.entity.Role;
import common.entity.User;
import common.model.CustomUserDetails;
import common.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

//Khi người dùng đăng nhập thì Spring Secuirty sẽ cần lấy các thông tin của UserDetails hiện có để kiểm tra.
//Vì vậy bạn cần tạo ra một class kế thừa lớp UserDetailsService mà Spring Security cung cấp để làm nhiệm vụ này.
@Service
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
        int uid = Integer.parseInt(userId);

        User user = userRepository.findById(uid).orElseThrow(() -> new UsernameNotFoundException("User Not Found with -> user id : " + uid));

        CustomUserDetails customUserDetails = new CustomUserDetails();

        if (user.getRole() != null) {
            Role role = user.getRole();
            List<SimpleGrantedAuthority> authorities = new ArrayList<>();
            authorities.add(new SimpleGrantedAuthority(role.getType()));
            customUserDetails.setAuthorities(authorities);
        }
        customUserDetails.setUser(user);
        return customUserDetails;
    }
}
