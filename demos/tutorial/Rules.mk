# Begin standard header
sp 		:= $(sp).x
dirstack_$(sp)	:= $(d)
d		:= $(dir)
# End standard header

dir := $(d)/common
include $(dir)/Rules.mk

dir := $(d)/path
include $(dir)/Rules.mk

dir := $(d)/path2
include $(dir)/Rules.mk

dir := $(d)/path3
include $(dir)/Rules.mk

dir := $(d)/text
include $(dir)/Rules.mk

dir := $(d)/gradient
include $(dir)/Rules.mk

dir := $(d)/image
include $(dir)/Rules.mk

dir := $(d)/custom_brush
include $(dir)/Rules.mk

dir := $(d)/packed_value
include $(dir)/Rules.mk

dir := $(d)/custom_path_shading
include $(dir)/Rules.mk

# Begin standard footer
d		:= $(dirstack_$(sp))
sp		:= $(basename $(sp))
# End standard footer
