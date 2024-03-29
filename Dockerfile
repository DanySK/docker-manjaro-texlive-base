FROM danysk/docker-manjaro-with-zsh:244.20240322.2302
RUN yay-install\
    biber\
    ghostscript\
    graphviz\
    minted\
    rubber\
    ruby\
    tectonic-bin\
    texlive\
    texlive-bibtexextra\
    texlive-core\
    texlive-fontsextra\
    texlive-lang\
    texlive-luatex\
    texlive-mathscience\
    texlive-pictures\
    texlive-publishers\
    texlive-science\
    texlive-xetex

#RUN ruby -pi -e "gsub('\$Master = \"\$Master/../..\"', '\$Master = \"\${Master}/../../..\"')" "/usr/share/texmf-dist/scripts/texlive/tlmgr.pl"
#RUN echo -e '#!/bin/sh\n/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode "$@"' > /usr/bin/tlmgr
#RUN chmod +x /usr/bin/tlmgr
#RUN tlmgr init-usertree
#RUN tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
ENV PATH="${PATH}:/usr/bin/vendor_perl/"
CMD /bin/bash
