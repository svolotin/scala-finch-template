scalaVersion := "2.11.12"

val finchVersion = "0.26.0"
val circeVersion = "0.10.1"
val scalatestVersion = "3.0.5"

mainClass in Compile := Some("com.iobionical.finchtemplate.Main")

lazy val root = (project in file("."))
  .settings(
    name := "finch-example",
    organization := "com.iobionical",
    version := "0.0.1-SNAPSHOT",
    
    libraryDependencies ++= Seq(
      "com.github.finagle" %% "finchx-core"  % finchVersion,
      "com.github.finagle" %% "finchx-circe"  % finchVersion,
      "io.circe" %% "circe-generic" % circeVersion,
      "org.scalatest"      %% "scalatest"    % scalatestVersion % "test"
    )
  ).enablePlugins(JavaAppPackaging)

