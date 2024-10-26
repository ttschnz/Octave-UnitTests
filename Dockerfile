FROM gnuoctave/octave:latest

COPY entrypoint.sh /entrypoint.sh

COPY ./octave-modules /octave-modules

ENTRYPOINT ["/entrypoint.sh"]
