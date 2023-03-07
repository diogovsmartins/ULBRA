using System.Collections.Generic;
using Ulbraflix.domain.entities;

namespace Ulbraflix.domain.DTOs_e_VOs;

public record SeasonRecord(int Id, List<Episode> Episodes);