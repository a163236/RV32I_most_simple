name := "RV32I_most_simple"

version := "0.1"

scalaVersion := "2.12.11"

scalacOptions ++= Seq("-deprecation", "-feature", "-unchecked", "-language:reflectiveCalls", "-Xsource:2.11")

resolvers ++= Seq(
  Resolver.sonatypeRepo("snapshots"),
  Resolver.sonatypeRepo("releases")
)

libraryDependencies += "edu.berkeley.cs" %% "chisel3" % "latest.release"
libraryDependencies += "edu.berkeley.cs" %% "chiseltest" % "latest.release"