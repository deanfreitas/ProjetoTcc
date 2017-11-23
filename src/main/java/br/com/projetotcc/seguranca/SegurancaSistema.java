package br.com.projetotcc.seguranca;

import br.com.projetotcc.entidade.pessoa.informacao.Login;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
public class SegurancaSistema {

	private static final Logger LOGGER = LoggerFactory.getLogger(SegurancaSistema.class);

    private AuthenticationManager authenticationManager;
	private UserDetailsService userDetailsService;

	@Autowired
    public SegurancaSistema(AuthenticationManager authenticationManager, UserDetailsService userDetailsService) {
        this.authenticationManager = authenticationManager;
        this.userDetailsService = userDetailsService;
    }

    public void autenticarlogin(Login login) {
        UserDetails userDetails = userDetailsService.loadUserByUsername(login.getUsuario());
        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(userDetails, login.getSenha(), userDetails.getAuthorities());
        authenticationManager.authenticate(usernamePasswordAuthenticationToken);

        if (usernamePasswordAuthenticationToken.isAuthenticated()) {
            SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
            LOGGER.debug(String.format("Auto login %s successfully!", login.getUsuario()));
        }
    }
}
