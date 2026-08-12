enum ClubRole {

  captain,

  viceCaptain,

  member,
}

extension ClubRolePermissions
    on ClubRole {

  bool get canManageLineup {

    return this ==
            ClubRole.captain ||
        this ==
            ClubRole.viceCaptain;
  }

  bool get canSendContracts {

    return this ==
            ClubRole.captain;
  }

  bool get canManageTransfers {

    return this ==
            ClubRole.captain;
  }

  bool get canManageMembers {

    return this ==
            ClubRole.captain;
  }

  bool get canAcceptApplications {

    return this ==
            ClubRole.captain;
  }
}