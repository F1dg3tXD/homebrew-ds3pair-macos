{\rtf1\ansi\ansicpg1252\cocoartf2870
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 class Ds3pairMacos < Formula\
  desc "DualShock 3 pairing and diagnostic utility for macOS"\
  homepage "https://github.com/F1dg3tXD/ds3pair-macos"\
\
  url "https://github.com/F1dg3tXD/ds3pair-macos/archive/refs/tags/v0.0.3a.tar.gz"\
  sha256 "
\f1\fs22 \cf2 \CocoaLigature0 0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5
\f0\fs24 \cf0 \CocoaLigature1 "\
\
  license "MIT"\
\
  depends_on :xcode\
\
  def install\
    system "swift", "build",\
           "--configuration", "release"\
\
    bin.install ".build/release/ds3pair-macos"\
  end\
\
  test do\
    system "#\{bin\}/ds3pair-macos", "--version"\
  end\
end}