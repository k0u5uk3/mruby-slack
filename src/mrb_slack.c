/*
** mrb_slack.c - Slack class
**
** Copyright (c) Kousuke Shimofuji 2015
**
** See Copyright Notice in LICENSE
*/

#include "mruby.h"
#include "mruby/data.h"
#include "mrb_slack.h"

#define DONE mrb_gc_arena_restore(mrb, 0);

static mrb_value mrb_slack_init(mrb_state *mrb, mrb_value self)
{
  return self;
}

void mrb_mruby_slack_gem_init(mrb_state *mrb)
{
    struct RClass *slack;
    slack = mrb_define_class(mrb, "Slack", mrb->object_class);
    mrb_define_method(mrb, slack, "initialize", mrb_slack_init, MRB_ARGS_NONE());
    DONE;
}

void mrb_mruby_slack_gem_final(mrb_state *mrb)
{
}

