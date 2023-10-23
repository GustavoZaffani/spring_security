package br.com.zaffani.securityapi.security.component;

import br.com.zaffani.securityapi.repository.UserRepository;
import br.com.zaffani.securityapi.security.constants.SecurityConstants;
import br.com.zaffani.securityapi.security.service.TokenService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.Objects;
import java.util.Optional;

import static java.util.Objects.nonNull;

@Component
public class SecurityFilter extends OncePerRequestFilter {

    @Autowired
    private TokenService tokenService;

    @Autowired
    private UserRepository userRepository;

//    @Autowired
//    private SecurityCache securityCache;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        var tokenJWT = tokenService.retrieveToken(request);

        if (nonNull(tokenJWT)) {
            var subject = tokenService.retrieveSubject(tokenJWT);
            var usuario = userRepository.findByUsername(subject);


//
//            usuario.getAuthorities();
//            String[] split = request.getRequestURI().split("/");
//
//            StringBuilder sb = new StringBuilder();
//
//            for (int i = 0; i < split.length; i++) {
//                if (split[i].matches("\\d+")) {
//                    sb.append("{IDENTIFIER}");
//                } else {
//                    sb.append(split[i]);
//                }
//
//                if (i != split.length - 1) {
//                    sb.append("/");
//                }
//            }
//
//            System.out.println(sb.toString());
//
//            String cache = securityCache.retrieveCache(HttpMethod.valueOf(request.getMethod()), sb.toString());
//
//            boolean hasPermission = usuario.getPerfils()
//                    .stream()
//                    .anyMatch(
//                            perfil -> perfil.getPermissoes()
//                                    .stream()
//                                    .anyMatch(permissao -> permissao.getIdentificador().equals(cache)));
//
//            if (!hasPermission) {
//                throw new AccessDeniedException("Você não possui a permissão " + cache);
//            }

            var autentication = new UsernamePasswordAuthenticationToken(usuario, null, usuario.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(autentication);
        }

        filterChain.doFilter(request, response);
    }
}
