namespace Ulbraflix.domain.DTOs_e_VOs;

public record EpisodeRecord(
    int Id,
    string Sinopsis,
    int Duration,
    int LastMinuteWatched);