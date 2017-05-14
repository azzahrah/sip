unit UMyClass;

interface

uses
  System.SysUtils, System.Classes, json, ioutils;

type
  TMyStatus = (stNone);

  TUser = class
    id:Integer;
    nama:String;
    alamat:String;
    tmp_lahir:String;
    tgl_lahir:String;
    tmp_tinggal:String;
    no_ktp:String;
    no_hp:String;
    email:String;
  end;

  TLaporan = class
    id:Integer;
    nama:String;
    alamat:String;
    tmp_lahir:String;
    tgl_lahir:String;
    tmp_tinggal:String;
    no_ktp:String;
    no_hp:String;
    email:String;
  end;
  TPengaduan = class
    id:Integer;
    nama:String;
    alamat:String;
    tmp_lahir:String;
    tgl_lahir:String;
    tmp_tinggal:String;
    no_ktp:String;
    no_hp:String;
    email:String;
  end;
  TPendaftaranSIM = class
    id:Integer;
    nama:String;
    alamat:String;
    tmp_lahir:String;
    tgl_lahir:String;
    tmp_tinggal:String;
    no_ktp:String;
    no_hp:String;
    email:String;
  end;
  TAntrianSIM = class
    id:Integer;
    nama:String;
    alamat:String;
    tmp_lahir:String;
    tgl_lahir:String;
    tmp_tinggal:String;
    no_ktp:String;
    no_hp:String;
    email:String;
  end;
  TTeleponPenting = class
    id:Integer;
    no_tlp:String;
  end;

implementation

end.
