/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

import '../posix.dart';

/// the simplified library provides a number of the more obvious entry points
/// for common operations.
///
/// These functions simply wrap existing posix functions using modern naming
/// conventions.

String getUserNameByUID(int uid) {
  final pwd = getpwuid(uid);

  return pwd.username;
}

/// Retrieve the user database entry for the given username.
///
/// This is an wrapper for the posix [getpwnam] function.
///
/// If [username] is not found then a [PosixException]
/// is thrown.
Passwd getPassword(String username) => getpwnam(username);

/// Search for a Group with a matching group ID.
///
/// This is an wrapper for the posix [getgrgid] function.
///
/// If no Group is found for the group ID then a [PosixException]
/// is thrown.
Group getGroupGuid(
  int gid,
) =>
    getgrgid(gid);

/// Search for a Group with a matching group name.
///
/// This is an wrapper for the posix [getgrnam] function.
///
/// If a Group can't be found for [group] then a [PosixException]
/// is thrown.
Group getGroupName(
  String group,
) =>
    getgrnam(group);

// Retrieves the group for the group
// id [gid].
Group getGroupByGid(int gid) => getgrgid(gid);

/// Retrieves the list of group gid's for the current user.
List<int> getGroupIds() => getgroups();

/// Retrieves the list of [Group]s for the current user.
List<Group> getGroups() {
  final groupIds = getGroupIds();
  final groups = <Group>[];
  for (final gid in groupIds) {
    final group = getGroupByGid(gid);
    groups.add(group);
  }
  return groups;
}

/// Retrieves the list of [Group]s for the current user.
List<Passwd> getUsers() {
  final users = <Passwd>[];
  Passwd? passwd;

  while ((passwd = getpwent()) != null) {
    users.add(passwd!);
  }
  endpwent();

  return users;
}
