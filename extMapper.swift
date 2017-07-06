type file;

file[] dir1 <Ext;exec="mapper.sh",root="dir1">;
file sout   <"logs/stdout.out">;
file serr   <"logs/stderr.err">;

app (file pout, file perr) tree (file[] dir1)
{
    tree stdout=@pout stderr=@perr;
}

(sout,serr)=tree(dir1);
